defmodule UploadsAppWeb.Router do
  use UploadsAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UploadsAppWeb do
    pipe_through :browser
    get "/", UploadController, :index
    resources("/uploads", UploadController, only: [:index, :new, :create, :show])
  end

  # Other scopes may use custom stacks.
  # scope "/api", UploadsAppWeb do
  #   pipe_through :api
  # end
end
