import styles from "./Index.module.css"
const Index = () => {

    return (
        <div>
            <div className={styles.main}>
                <div>
                    <a href="/" className={styles.rowImag}>
                        <img
                            src="https://ecm-api.nitcambodia.com/public/nit.jpeg"
                            alt="NIT Cambodai. Build IT skill."
                            style={{
                                width:50
                            }}
                        />
                        <div style={{paddingLeft:10}}>
                            <div className={styles.txtBrand}>NIT Cambodia</div>
                            <div className={styles.txtBrandSub}>Build Your IT Skill</div>
                        </div>
                       
                    </a>
                </div>
                <div>
                    <ul className={styles.menu}>
                        <a className={styles.menuItem} href="/"><li>Home</li></a>
                        <a className={styles.menuItem} href="/"><li>Course</li></a>
                        <a className={styles.menuItem} href="/"><li>My Lesson</li></a>
                        <a className={styles.menuItem} href="/"><li>Learn now</li></a>
                        <a className={styles.menuItem} href="/dashboard"><li>Go Backend</li></a>
                    </ul>
                </div>
            </div>
        </div>
    )
}

export default Index;