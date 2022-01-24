export default function ({ route, redirect }) {
  switch (route.path) {
    case '/redirect':
      redirect('https://tedshd.io')
      break
  }
}
