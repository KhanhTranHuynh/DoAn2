import { Container, Row, Col, Button } from "react-bootstrap";

export const Footer = () => {
    return (
        <footer className="bg-dark text-white-50 py-5 mt-5">
            <Container>
                <Row>
                    {/* Contact Section */}
                    <Col md={6}>
                        <h4 className="text-light mb-3">Contact</h4>
                        <p>Email: khanhtranhuynh9@gmail.com</p>
                        <p>Phone: (+84) 868.333.224</p>
                    </Col>


                </Row>
                {/* Footer Bottom */}
                <div className="text-center pt-4 mt-4 border-top border-secondary">
                    <p className="mb-0">
                        &copy; 2024 My Website. All Rights Reserved. Designed by Me.
                    </p>
                </div>
            </Container>
        </footer>
    )
}

