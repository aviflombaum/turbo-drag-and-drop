import { Controller } from "@hotwired/stimulus";
import { post } from "@rails/request.js";
import { playlistsTracks } from "lib/routes";

export default class PlaylistsController extends Controller {
  async addTrack(event) {
    event.preventDefault();
    console.log("Add Track");
    const trackId = event.dataTransfer.getData("text");
    const response = await post(playlistsTracks(event.target.dataset.playlistId), {
      body: { user_track_id: trackId },
    });

    const html = await response.html;
    const flashWrapper = document.createElement("div");
    flashWrapper.innerHTML = html;
    document.body.appendChild(flashWrapper);
    event.target.classList.remove("border");
    event.target.classList.remove("border-dashed");
    event.target.classList.remove("border-gray-400");
    event.target.classList.remove("bg-gray-100");
  }

  trackOver(event) {
    event.preventDefault();
    event.currentTarget.classList.add("border");
    event.currentTarget.classList.add("border-dashed");
    event.currentTarget.classList.add("border-gray-400");
    event.currentTarget.classList.add("bg-gray-100");
  }

  trackLeave(event) {
    event.preventDefault();
    event.currentTarget.classList.remove("border");
    event.currentTarget.classList.remove("border-dashed");
    event.currentTarget.classList.remove("border-gray-400");
    event.currentTarget.classList.remove("bg-gray-100");
  }
}
