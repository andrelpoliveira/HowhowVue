import axios from "axios";

export const http = axios.create({
    baseURL: 'https://reqres.in/api/users?page=2'
})